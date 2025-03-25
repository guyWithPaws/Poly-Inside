import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class UserLicenseAgreement extends StatelessWidget {
  const UserLicenseAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildSectionTitle(String title) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      );
    }

    Widget buildSectionContent(String content) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          content,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black54,
            height: 1.5,
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        colorScheme: MaterialTheme.lightScheme().toColorScheme().copyWith(
              surface: Colors.white,
              onSurface: Colors.black,
              outline: Colors.grey.shade700,
            ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Пользовательское соглашение'),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 185, 185, 185),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset('assets/icons/cross.svg'),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSectionTitle('1. ОБЩИЕ ПОЛОЖЕНИЯ'),
              buildSectionContent(
                '1.1. Настоящее Пользовательское соглашение (далее — «Соглашение») регулирует права и обязанности Пользователя (далее — «Пользователь») и администратора приложения (далее — «Приложение», «Мы») в отношении использования Приложения для оценки преподавателей.',
              ),
              buildSectionContent(
                '1.2. Используя Приложение, Пользователь подтверждает, что ознакомлен с условиями настоящего Соглашения, принимает его и обязуется соблюдать все положения, изложенные ниже. Если Пользователь не согласен с условиями, он не имеет права использовать Приложение.',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('2. ОТВЕТСТВЕННОСТЬ'),
              buildSectionContent(
                '2.1. Мы не несём ответственности за точность, полноту и достоверность информации, оставляемой Пользователями в Приложении, включая оценки и комментарии о преподавателях. Приложение предоставляет исключительно платформу для обмена мнениями и не гарантирует, что информация будет объективной или правдивой.',
              ),
              buildSectionContent(
                '2.2. Мы не несем ответственности за последствия, возникающие из-за оставленных Пользователями негативных комментариев или оценок, включая возможные последствия для репутации преподавателей или третьих лиц.',
              ),
              buildSectionContent(
                '2.3. Приложение не несет ответственности за возможные ошибки или сбои, возникшие в процессе использования Приложения, включая технические неполадки, которые могут повлиять на работу системы и сохранение данных.',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('3. ОБЯЗАННОСТИ ПОЛЬЗОВАТЕЛЕЙ'),
              buildSectionContent(
                '3.1. Пользователи обязаны предоставлять только достоверную и актуальную информацию о преподавателях.',
              ),
              buildSectionContent(
                '3.2. Запрещается размещать в Приложении информацию, которая:\n- Нарушает права и свободы других пользователей, преподавателей или третьих лиц.\n- Является клеветой, угрозами или нарушает моральные и этические нормы.\n- Нарушает законодательство Российской Федерации, в том числе, но не ограничиваясь, законами, регулирующими защиту чести, достоинства и деловой репутации.\n- Включает оскорбления, расистские высказывания, угрозы насилия или дискриминацию.',
              ),
              buildSectionContent(
                '3.3. Пользователи соглашаются не использовать Приложение для размещения ложных данных, манипуляции с оценками и комментариями, а также для других недобросовестных действий.',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('4. КОНФИДЕНЦИАЛЬНОСТЬ И ПЕРСОНАЛЬНЫЕ ДАННЫЕ'),
              buildSectionContent(
                '4.1. Мы обязуемся соблюдать конфиденциальность персональных данных, предоставленных Пользователями в процессе использования Приложения. Персональные данные будут обрабатываться в соответствии с действующим законодательством о защите персональных данных.',
              ),
              buildSectionContent(
                '4.2. Пользователь соглашается с тем, что его личные данные могут быть использованы для регистрации и функционирования Приложения, а также для отправки уведомлений и маркетинговых материалов (если Пользователь не отказался от получения таких материалов).',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('5. ПРАВА И ОБЯЗАННОСТИ АДМИНИСТРАТОРА'),
              buildSectionContent(
                '5.1. Мы оставляем за собой право в любое время изменять или приостанавливать работу Приложения, а также модерацию контента, размещаемого Пользователями.',
              ),
              buildSectionContent(
                '5.2. Мы имеем право удалять комментарии и оценки, нарушающие настоящее Соглашение, законодательство РФ, а также правила и стандарты Приложения.',
              ),
              buildSectionContent(
                '5.3. Мы не обязаны контролировать каждое отдельное мнение, размещённое Пользователями, но при наличии жалоб или сигналов о нарушениях мы можем провести проверку и принять соответствующие меры.',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('6. ИЗМЕНЕНИЯ В СОГЛАШЕНИИ'),
              buildSectionContent(
                '6.1. Мы оставляем за собой право в любое время изменять условия настоящего Соглашения без предварительного согласования с Пользователем. Изменения вступают в силу с момента их опубликования в Приложении.',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('7. ПРАВО ИСКЛЮЧИТЕЛЬНОЙ ПРИОРИТЕТНОЙ СТАТУСА'),
              buildSectionContent(
                '7.1. В случае возникновения споров, связанных с использованием Приложения, стороны будут пытаться разрешить их путём переговоров. Если сторонам не удастся достичь соглашения, спор будет передан в суд по месту нахождения Ответчика.',
              ),
              const SizedBox(height: 16.0),
              buildSectionTitle('8. ПРОЧИЕ УСЛОВИЯ'),
              buildSectionContent(
                '8.1. Все вопросы, не урегулированные данным Соглашением, регулируются законодательством Российской Федерации.',
              ),
              buildSectionContent(
                '8.2. Если какое-либо положение настоящего Соглашения будет признано недействительным, это не повлияет на действительность остальных положений.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
