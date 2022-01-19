USE pad;

ALTER TABLE `pad`.`accounts`
ADD COLUMN `msisdn` VARCHAR(16) NOT NULL AFTER `post_code`,
ADD COLUMN `nationality` VARCHAR(2) NOT NULL AFTER `msisdn`;

ALTER TABLE `pad`.`accounts`
DROP COLUMN `date_email_verified`,
DROP COLUMN `is_email_verified`;

INSERT INTO `pad`.`email_templates` (`id`, `type`, `name`, `account_id`, `config_id`, `user`, `email_from`, `email_from_password`, `email_from_alias`, `email_bcc`, `subject`, `template`, `message`, `variables`, `priority`, `operator_id`, `date_created`, `date_edited`) VALUES ('3', '-1', 'PAD Registration Completed', '-1', '1', ' ', 'no-reply@allpointspayments.com', 'gaf4mAYuC8ch', 'PAD - TEST', ' ', 'PAD Registration Completed Successfully', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html\n    xmlns=\"http://www.w3.org/1999/xhtml\">\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n        <title>PAD -  Registration Successful </title>\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n    </head>\n    <body style=\"margin: 0; padding: 0;\">\n        <div style=\"margin:0;background-color:#f3f3f4\">\n            <div style=\"background-color:#f3f3f4;font-size:14px;font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;color:#333333;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0\">\n                <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background-color:#f3f3f4;font-size:14px;font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;color:#333333;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\">\n                                <table width=\"600px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#f3f3f4\" align=\"center\" style=\"border-spacing:0\">\n                                    <tbody>\n                                        <tr>\n                                            <td width=\"600\" bgcolor=\"#f3f3f4\" style=\"border-collapse:collapse\">\n                                                <table width=\"600\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#f3f3f4\" style=\"border-spacing:0;margin-bottom:0;margin-left:auto;margin-right:auto;margin-top:40px\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td width=\"600\" height=\"100\" bgcolor=\"#337AB7\" style=\"border-collapse:collapse;background:#337AB7;border-radius:3px 3px 0 0\">\n                                                                <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-spacing:0;margin:0 auto\">\n                                                                    <tbody>\n                                                                        <tr>\n                                                                            <td>\n                                                                                <h4 style=\"color: white;font-size: 30px;\">Port Access Dakar</h4>\n                                                                            </td>\n                                                                        </tr>\n                                                                    </tbody>\n                                                                </table>\n                                                            </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td width=\"600\" bgcolor=\"#ffffff\">\n                                                                ${templateBody}\n                                                                                </td>\n                                                                            </tr>\n                                                                        </tbody>\n                                                                    </table>\n                                                                </td>\n                                                            </tr>\n                                                            <tr>\n                                                                <td style=\"background-color:#ffffff;border-radius:0 0 3px 3px;border-left:1px solid #e8e8e9;border-right:1px solid #e8e8e9;border-bottom:1px solid #e8e8e9\">\n                      &nbsp;\n                    </td>\n                                                            </tr>\n                                                            <tr>\n                                                                <td width=\"600\" height=\"20\" style=\"border-collapse:collapse\">&nbsp;</td>\n                                                            </tr>\n                                                            <tr style=\"font-size:12px;color:#999999\">\n                                                                <td width=\"600\" align=\"left\" style=\"border-collapse:collapse\">\n                                                                    <p style=\"line-height:21px;margin-bottom:15px;margin-left:0;margin-right:0;margin-top:28px\">CONFIDENTIAL! This email contains confidential information and is intended for the authorised recipient only. You may neither use nor edit the email including attachments, nor make them accessible to third parties in any manner whatsoever. Any unauthorised copying, disclosure or distribution of the material in this email is strictly forbidden. Thank you for your co-operation. If you received this message by mistake, please delete this email.\n                                            \n                                            \n                                              \n                                        \n                                    \n                                                                        <br>\n                                                                            <br>\n                                              SAVE PAPER - Please do not print this e-mail unless absolutely necessary\n                                                  \n                                              \n                                              \n                                                \n                                          \n                                      \n                                                                            </p>\n                                                                        </td>\n                                                                    </tr>\n                                                                    <tr>\n                                                                        <td width=\"600\" height=\"50\" style=\"border-collapse:collapse\">&nbsp;</td>\n                                                                    </tr>\n                                                                </tbody>\n                                                            </table>\n                                                        </td>\n                                                    </tr>\n                                                </tbody>\n                                            </table>\n                                        </td>\n                                    </tr>\n                                </tbody>\n                            </table>\n                        </div>\n                    </div>\n                </body>\n            </html>', '<table width=\"600\" cellspacing=\"0\" border=\"0\" cellpadding=\"0\" style=\"width:100%;padding:32px 50px 32px;border-left:1px solid #e8e8e9;border-right:1px solid #e8e8e9\">\n    <tbody>\n        <tr>\n            <td>\n                <p style=\"font-family:\'Helvetica Neue\';font-size:26px;font-weight:normal;color:#545457;margin:1em 0\">Hello ${operatorName},</p>\n            </td>\n        </tr>\n        <tr>\n            <td>\n                <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width:100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#545457;line-height:22px;margin-bottom:1.3em\">We are delighted to confirm your registration with Port Access Dakar! Please click on the link below to login.\n                                                    \n                                                    </p>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#545457;line-height:22px;margin-bottom:1.3em\">Please \n                                                        \n                                                            \n                                                      \n                                                  \n                                                                                                    \n                                    <a href=\"${loginPageUrl}\">\n                                        <strong>click here</strong>\n                                    </a> to login!.\n                                                        \n                                                          \n                                                    \n                                                \n                                                                                                \n                                </p>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#707074;line-height:22px;margin-bottom:1em\">\n                                    Kind Regards,\n                                                          \n                                                          \n                                                          \n                                                            \n                                                      \n                                                  \n                                                                                                    \n                                    <br>\n                                        <strong>PAD Support Team</strong>\n                                    </p>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>', ' ', '15', '-1', '2019-01-14 10:01:00', '2019-01-14 10:01:00');

UPDATE `pad`.`email_templates` SET `template`='<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html\n    xmlns=\"http://www.w3.org/1999/xhtml\">\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n        <title>PAD - Email Verification Code</title>\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n    </head>\n    <body style=\"margin: 0; padding: 0;\">\n        <div style=\"margin:0;background-color:#f3f3f4\">\n            <div style=\"background-color:#f3f3f4;font-size:14px;font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;color:#333333;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0\">\n                <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background-color:#f3f3f4;font-size:14px;font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;color:#333333;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\">\n                                <table width=\"600px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#f3f3f4\" align=\"center\" style=\"border-spacing:0\">\n                                    <tbody>\n                                        <tr>\n                                            <td width=\"600\" bgcolor=\"#f3f3f4\" style=\"border-collapse:collapse\">\n                                                <table width=\"600\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#f3f3f4\" style=\"border-spacing:0;margin-bottom:0;margin-left:auto;margin-right:auto;margin-top:40px\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td width=\"600\" height=\"100\" bgcolor=\"#337AB7\" style=\"border-collapse:collapse;background:#337AB7;border-radius:3px 3px 0 0\">\n                                                                <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-spacing:0;margin:0 auto\">\n                                                                    <tbody>\n                                                                        <tr>\n                                                                            <td>\n                                                                                <h4 style=\"color: white;font-size: 30px;\">Port Access Dakar</h4>\n                                                                            </td>\n                                                                        </tr>\n                                                                    </tbody>\n                                                                </table>\n                                                            </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td width=\"600\" bgcolor=\"#ffffff\">\n                                                                ${templateBody}\n                                                                </td>\n                                                            </tr>\n                                                            <tr>\n                                                                <td style=\"background-color:#ffffff;border-radius:0 0 3px 3px;border-left:1px solid #e8e8e9;border-right:1px solid #e8e8e9;border-bottom:1px solid #e8e8e9\">\n                      &nbsp;\n                    </td>\n                                                            </tr>\n                                                            <tr>\n                                                                <td width=\"600\" height=\"20\" style=\"border-collapse:collapse\">&nbsp;</td>\n                                                            </tr>\n                                                            <tr style=\"font-size:12px;color:#999999\">\n                                                                <td width=\"600\" align=\"left\" style=\"border-collapse:collapse\">\n                                                                    <p style=\"line-height:21px;margin-bottom:15px;margin-left:0;margin-right:0;margin-top:28px\">CONFIDENTIAL! This email contains confidential information and is intended for the authorised recipient only. You may neither use nor edit the email including attachments, nor make them accessible to third parties in any manner whatsoever. Any unauthorised copying, disclosure or distribution of the material in this email is strictly forbidden. Thank you for your co-operation. If you received this message by mistake, please delete this email.\n                                            \n                                            \n                                    \n                                    \n                                                                        <br>\n                                                                            <br>\n                                               SAVE PAPER - Please do not print this e-mail unless absolutely necessary\n                                                 \n                                              \n                                              \n                                      \n                                      \n                                                                            </p>\n                                                                        </td>\n                                                                    </tr>\n                                                                    <tr>\n                                                                        <td width=\"600\" height=\"50\" style=\"border-collapse:collapse\">&nbsp;</td>\n                                                                    </tr>\n                                                                </tbody>\n                                                            </table>\n                                                        </td>\n                                                    </tr>\n                                                </tbody>\n                                            </table>\n                                        </td>\n                                    </tr>\n                                </tbody>\n                            </table>\n                        </div>\n                    </div>\n                </body>\n            </html>', `message`='<table width=\"600\" cellspacing=\"0\" border=\"0\" cellpadding=\"0\" style=\"width:100%;padding:32px 50px 32px;border-left:1px solid #e8e8e9;border-right:1px solid #e8e8e9\">\n    <tbody>\n        <tr>\n            <td>\n                <p style=\"font-family:\'Helvetica Neue\';font-size:26px;font-weight:normal;color:#545457;margin:1em 0\">Hello,</p>\n            </td>\n        </tr>\n        <tr>\n            <td>\n                <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width:100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#545457;line-height:22px;margin-bottom:1.3em\">Thank you for your interest in joining Port Access Dakar.</p>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#545457;line-height:22px;margin-bottom:1.3em\">To start the registration process, please verify your email address by entering the verification code below on the registration page. This verification code will be active for the \n                                                  \n                                                                                                    \n                                    <strong>next ${emailCodeValidityPeriod} minutes</strong>.\n                                                        \n                                                \n                                                \n                                                                                                \n                                </p>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#545457;line-height:22px;margin-bottom:1.3em\">Your email address verification code is \n                                                  \n                                                  \n                                                                                                    \n                                    <strong>${verificationCode}</strong>.\n                                                        \n                                                \n                                                \n                                                                                                \n                                </p>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td>\n                                <p style=\"font-family:Helvetica;font-size:16px;color:#707074;line-height:22px;margin-bottom:1em\">\n                                    Kind Regards,\n                                                          \n                                                          \n                                                          \n                                                  \n                                                  \n                                                                                                    \n                                    <br>\n                                        <strong>PAD Support Team</strong>\n                                    </p>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n            </tr>\n        </tbody>\n    </table>' WHERE `id`='2';
