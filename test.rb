name = gets()

def test_passwords(file_path, account_number, password_list)
    begin
      # قم بفتح الملف للقراءة
      file = File.open(file_path, "r")
  
      # قم بقراءة كل سطر من الملف
      file.each_line do |line|
        # قم بإزالة أي مسافات بيضاء قبل وبعد الكلمة
        password = line.strip
  
        # قم بتجربة الكلمة من قائمة كلمات المرور على الحساب
        if password_list.include?(password)
          puts "تم العثور على كلمة المرور الصحيحة: #{password}"
          system("chmod +x #{script_path}")
          def execute_shell_script(script_path)
            # استخدام الأمر `chmod` لإعطاء الإذن التنفيذي للملف shell script
            system("chmod +x #{script_path}")
          
            # تنفيذ الملف shell script باستخدام الأمر `./`
            system("./#{script_path}")
          end
          system("./#{script_path}")
          if password.to_i == account_number
            puts "تم الوصول إلى الحساب بنجاح!"
            system("chmod +x #{script_path}")
            system("./#{script_path}")
            def execute_shell_script(script_path)
                # استخدام الأمر `chmod` لإعطاء الإذن التنفيذي للملف shell script
                system("chmod +x #{script_path}")
              
                # تنفيذ الملف shell script باستخدام الأمر `./`
                system("./#{script_path}")
              end
          else
            puts "كلمة المرور صحيحة ولكنها ليست للحساب المستهدف."
          end
          file.close
          return
        end
      end
  
      # إغلاق الملف بعد الانتهاء من القراءة
      file.close
  
      # إذا لم يتم العثور على كلمة المرور المطلوبة
      puts "لم يتم العثور على كلمة المرور المطلوبة."
    rescue Errno::ENOENT
      puts "لم يتم العثور على الملف: #{file_path}"
    end
  end
  
  # استدعاء الدالة لاختبار كلمات المرور
  file_path = "passs/12.txt"  # استبدلها بمسار الملف الفعلي
  account_number = name   # الحساب المستهدف
  password_list = ["password1", "123456", "qwerty"]  # قائمة بكلمات المرور المحتملة
  test_passwords(file_path, account_number, password_list)
  script_path = "mac.sh"  # استبدلها بمسار الملف الفعلي للـ shell script
  execute_shell_script(script_path)

