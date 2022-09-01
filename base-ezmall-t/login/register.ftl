<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
         <!--   <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName"
                           value="${(register.formData.firstName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('firstName')>
                        <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div> -->

<!--             <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="middleName" class="${properties.kcLabelClass!}">${msg("middleName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="middleName" class="${properties.kcInputClass!}" name="middleName"
                           value="${(register.formData.middleName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('middleName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('middleName')>
                        <span id="input-error-middlename" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('middleName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

    -->    <!--    <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName"
                           value="${(register.formData.lastName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('lastName')>
                        <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>-->

<!--            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" class="${properties.kcInputClass!}" name="email"
                           value="${(register.formData.email!'')}" autocomplete="email"
                           aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                    />

                    <#if messagesPerField.existsError('email')>
                        <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('email'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>
-->
        <#if !realm.registrationEmailAsUsername>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="username" class="${properties.kcLabelClass!}">${msg("mobileNumber")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input type="text" id="username" class="${properties.kcInputClass!}" name="username"
                               value="${(register.formData.username!'')}" 
                               aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                        />
                        <#if messagesPerField.existsError('username')>
                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('mobileNumber'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if>


         <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" class="${properties.kcInputClass!}" name="email"
                           value="${(register.formData.email!'')}" autocomplete="email"
                    />

                  
                </div>
            </div>


        <!--    <#if !realm.registrationEmailAsUsername>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="username" class="${properties.kcLabelClass!}">${msg("emailORmobileNo")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input type="text" id="username" class="${properties.kcInputClass!}" name="username"
                               value="${(register.formData.username!'')}" autocomplete="username"
                               aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                        />

                        <#if messagesPerField.existsError('username')>
                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if> -->
            
       <!--     <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('mobileNumber',properties.kcFormGroupErrorClass!)}">
		  <div class="${properties.kcLabelWrapperClass!}">
		    <label for="user.attributes.mobileNumber" class="${properties.kcLabelClass!}">${msg("mobileNumber")}</label>
		  </div>
		  <div class="${properties.kcInputWrapperClass!}">
		    <input type="text" id="user.attributes.mobileNumber" class="${properties.kcInputClass!}" name="user.attributes.mobileNumber"	
		    value="${(register.formData['user.attributes.mobileNumber']!'')}"/>
		  </div>
	    </div> -->

        <!--    <#if passwordRequired??>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input type="password" id="password" class="${properties.kcInputClass!}" name="password"
                               autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password')>
                            <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="password-confirm"
                               class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input type="password" id="password-confirm" class="${properties.kcInputClass!}"
                               name="password-confirm"
                               aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password-confirm')>
                            <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if> -->

            <#if acceptTermsRequired??>
                <div class="${properties.kcFormGroupClass!}">
                    <script defer>
                        document.getElementById("termsLink").setAttribute("target", "_blank");
                    </script>
                    <div class="${properties.kcLabelWrapperClass!}" id="ssoTermsCondition">
                <input type="checkbox" id="acceptTerms" name="terms" class="${properties.kcCheckboxInputClass!}"
                            value="${(register.formData.acceptTerms!'')}"
                            aria-invalid="<#if messagesPerField.existsError('terms')>true</#if>" />            
                        <label for="acceptTerms" class="${properties.kcLabelClass!}">
                            ${msg("acceptTerms")} <a id=“termsLink” href="https://www.ezmall.com/faces/fe/jsps/termsCondition.jsp"
                                target="_blank">Terms of Use </a> &amp; <a href="https://www.ezmall.com/faces/fe/jsps/privacy.jsp"
                                target="_blank"> Privacy Policy</a>
                        </label>
                        
                    </div>
                </div>
            </#if>


            <#if recaptchaRequired??>
                <div class="form-group">
                    <div class="${properties.kcInputWrapperClass!}">
                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                    </div>
                </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
               

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("generateOTP")}"/>
                </div>

		 <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span>Already have an account? <a href="${url.loginUrl}">Login</a></span>
                    </div>
                </div>

            </div>
        </form>
        
         <div class="oloeSec">
                <h3>one login one ecosystem</h3>
                <ul class="oloeSecComp">
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/zee-news.svg" alt="" /></li>
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/zee-hindustan.svg" alt="" /></li>
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/zee-business.png" alt="" /></li>
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/wion.png" alt="" /></li>
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/health.svg" alt="" /></li>
                   <!-- <li><img src="https://cdn5.ezmall.com/0/india-sso/images/" alt="" /></li>
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/" alt="" /></li>-->
                    <li><img src="https://cdn5.ezmall.com/0/india-sso/images/bollywood.png" alt="" /></li>
                   <li><img src="https://cdn5.ezmall.com/0/india-sso/images/cricket.svg" alt="" /></li>
                </ul>
            </div>
            <div class="securityInfoSec">
                <span class="securityIcon"><img src="https://cdn5.ezmall.com/0/india-sso/images/security-icon.png" alt="" /></span>
                <span>Your Personal Information is 100% secured with us. We do not share your data with any third party</span>
            </div>
    </#if>
</@layout.registrationLayout>
