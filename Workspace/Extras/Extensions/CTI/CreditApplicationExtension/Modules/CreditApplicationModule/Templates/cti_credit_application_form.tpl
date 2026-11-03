<section class="credit-application-container">
    <header class="credit-application-header">
        <h1 class="credit-application-title">Credit Application for Net 30 Terms</h1>
        <p class="credit-application-subtitle">Please complete all required fields below to submit your business credit application.</p>
    </header>

    <div class="credit-application-alert-container" data-type="alert-placeholder">
        {{#if showSuccess}}
            <div class="credit-application-alert credit-application-alert-success" role="alert">
                <i class="credit-application-alert-icon icon-ok-sign"></i>
                <div class="credit-application-alert-content">
                    <h4 class="credit-application-alert-heading">Application Submitted Successfully!</h4>
                    <p>Thank you for submitting your credit application to CTIconnect. Your reference ID is <strong>#{{recordId}}</strong>. Our credit department will review your application and respond shortly.</p>
                </div>
            </div>
        {{/if}}

        {{#if errorMessage}}
            <div class="credit-application-alert credit-application-alert-error" role="alert">
                <i class="credit-application-alert-icon icon-exclamation-sign"></i>
                <div class="credit-application-alert-content">
                    <h4 class="credit-application-alert-heading">Submission Error</h4>
                    <p>{{errorMessage}}</p>
                </div>
            </div>
        {{/if}}
    </div>

    {{#unless showSuccess}}
    <form class="credit-application-form" id="cti-credit-application-form" novalidate>
        
        <!-- SECTION 1: COMPANY INFORMATION -->
        <div class="credit-application-card">
            <div class="credit-application-card-header">
                <h2>Company Information</h2>
            </div>
            <div class="credit-application-card-body">
                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label for="companyName" class="credit-application-label">Company Name <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="companyName" name="companyName" required value="{{model.companyName}}" placeholder="Enter legal business name">
                        <span class="credit-application-error-text" data-validation-error="companyName"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="phoneNumber" class="credit-application-label">Phone Number <span class="required">*</span></label>
                        <input type="tel" class="credit-application-input" id="phoneNumber" name="phoneNumber" required value="{{model.phoneNumber}}" placeholder="(XXX) XXX-XXXX">
                        <span class="credit-application-error-text" data-validation-error="phoneNumber"></span>
                    </div>
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="faxNumber" class="credit-application-label">Fax Number</label>
                        <input type="tel" class="credit-application-input" id="faxNumber" name="faxNumber" value="{{model.faxNumber}}" placeholder="(XXX) XXX-XXXX">
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label for="email" class="credit-application-label">E-mail <span class="required">*</span></label>
                        <input type="email" class="credit-application-input" id="email" name="email" required value="{{model.email}}" placeholder="ex: myname@example.com">
                        <span class="credit-application-error-text" data-validation-error="email"></span>
                    </div>
                </div>

                <!-- Shipping Address -->
                <fieldset class="credit-application-fieldset">
                    <legend class="credit-application-legend">Company Shipping Address <span class="required">*</span></legend>
                    <div class="credit-application-row">
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="shipAddr1" class="credit-application-sublabel">Street Address <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="shipAddr1" name="shipAddr1" required value="{{model.shipAddr1}}">
                            <span class="credit-application-error-text" data-validation-error="shipAddr1"></span>
                        </div>
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="shipAddr2" class="credit-application-sublabel">Street Address Line 2</label>
                            <input type="text" class="credit-application-input" id="shipAddr2" name="shipAddr2" value="{{model.shipAddr2}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="shipCity" class="credit-application-sublabel">City <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="shipCity" name="shipCity" required value="{{model.shipCity}}">
                            <span class="credit-application-error-text" data-validation-error="shipCity"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="shipState" class="credit-application-sublabel">State / Province <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="shipState" name="shipState" required value="{{model.shipState}}">
                            <span class="credit-application-error-text" data-validation-error="shipState"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="shipPostal" class="credit-application-sublabel">Postal / Zip Code <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="shipPostal" name="shipPostal" required value="{{model.shipPostal}}">
                            <span class="credit-application-error-text" data-validation-error="shipPostal"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="shipCountry" class="credit-application-sublabel">Country <span class="required">*</span></label>
                            <select class="credit-application-select" id="shipCountry" name="shipCountry" required>
                                <option value="">Please Select</option>
                                {{#each countries}}
                                    <option value="{{code}}" {{#if isSelected}}selected{{/if}}>{{name}}</option>
                                {{/each}}
                            </select>
                            <span class="credit-application-error-text" data-validation-error="shipCountry"></span>
                        </div>
                    </div>
                </fieldset>

                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label class="credit-application-label">Company Type <span class="required">*</span></label>
                        <div class="credit-application-radio-group">
                            <label class="credit-application-radio-label">
                                <input type="radio" name="companyType" value="Sole Proprietorship" required {{#ifEquals model.companyType 'Sole Proprietorship'}}checked{{/ifEquals}}> Sole Proprietorship
                            </label>
                            <label class="credit-application-radio-label">
                                <input type="radio" name="companyType" value="Partnership" required {{#ifEquals model.companyType 'Partnership'}}checked{{/ifEquals}}> Partnership
                            </label>
                            <label class="credit-application-radio-label">
                                <input type="radio" name="companyType" value="Corporation" required {{#ifEquals model.companyType 'Corporation'}}checked{{/ifEquals}}> Corporation
                            </label>
                            <label class="credit-application-radio-label">
                                <input type="radio" name="companyType" value="Other" required {{#ifEquals model.companyType 'Other'}}checked{{/ifEquals}}> Other
                            </label>
                        </div>
                        <span class="credit-application-error-text" data-validation-error="companyType"></span>
                    </div>
                </div>
            </div>
        </div>

        <!-- SECTION 2: BUSINESS AND CREDIT INFO -->
        <div class="credit-application-card">
            <div class="credit-application-card-header">
                <h2>Business and Credit Info</h2>
            </div>
            <div class="credit-application-card-body">
                <div class="credit-application-row">
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="apFirstName" class="credit-application-label">Accounts Payable First Name <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="apFirstName" name="apFirstName" required value="{{model.apFirstName}}">
                        <span class="credit-application-error-text" data-validation-error="apFirstName"></span>
                    </div>
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="apLastName" class="credit-application-label">Accounts Payable Last Name <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="apLastName" name="apLastName" required value="{{model.apLastName}}">
                        <span class="credit-application-error-text" data-validation-error="apLastName"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="apPhone" class="credit-application-label">AP Phone <span class="required">*</span></label>
                        <input type="tel" class="credit-application-input" id="apPhone" name="apPhone" required value="{{model.apPhone}}">
                        <span class="credit-application-error-text" data-validation-error="apPhone"></span>
                    </div>
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="apFax" class="credit-application-label">AP Fax</label>
                        <input type="tel" class="credit-application-input" id="apFax" name="apFax" value="{{model.apFax}}">
                    </div>
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="apEmail" class="credit-application-label">AP E-mail <span class="required">*</span></label>
                        <input type="email" class="credit-application-input" id="apEmail" name="apEmail" required value="{{model.apEmail}}">
                        <span class="credit-application-error-text" data-validation-error="apEmail"></span>
                    </div>
                </div>

                <!-- Billing Address -->
                <fieldset class="credit-application-fieldset">
                    <legend class="credit-application-legend">Company to Bill Address <span class="required">*</span></legend>
                    <div class="credit-application-row">
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="billAddr1" class="credit-application-sublabel">Street Address <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="billAddr1" name="billAddr1" required value="{{model.billAddr1}}">
                            <span class="credit-application-error-text" data-validation-error="billAddr1"></span>
                        </div>
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="billAddr2" class="credit-application-sublabel">Street Address Line 2</label>
                            <input type="text" class="credit-application-input" id="billAddr2" name="billAddr2" value="{{model.billAddr2}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="billCity" class="credit-application-sublabel">City <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="billCity" name="billCity" required value="{{model.billCity}}">
                            <span class="credit-application-error-text" data-validation-error="billCity"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="billState" class="credit-application-sublabel">State / Province <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="billState" name="billState" required value="{{model.billState}}">
                            <span class="credit-application-error-text" data-validation-error="billState"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="billPostal" class="credit-application-sublabel">Postal / Zip Code <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="billPostal" name="billPostal" required value="{{model.billPostal}}">
                            <span class="credit-application-error-text" data-validation-error="billPostal"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="billCountry" class="credit-application-sublabel">Country <span class="required">*</span></label>
                            <select class="credit-application-select" id="billCountry" name="billCountry" required>
                                <option value="">Please Select</option>
                                {{#each countries}}
                                    <option value="{{code}}" {{#if isSelected}}selected{{/if}}>{{name}}</option>
                                {{/each}}
                            </select>
                            <span class="credit-application-error-text" data-validation-error="billCountry"></span>
                        </div>
                    </div>
                </fieldset>

                <!-- Bank Info -->
                <div class="credit-application-row">
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="bankName" class="credit-application-label">Bank Name <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="bankName" name="bankName" required value="{{model.bankName}}">
                        <span class="credit-application-error-text" data-validation-error="bankName"></span>
                    </div>
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="bankBranchName" class="credit-application-label">Branch Name <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="bankBranchName" name="bankBranchName" required value="{{model.bankBranchName}}">
                        <span class="credit-application-error-text" data-validation-error="bankBranchName"></span>
                    </div>
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="bankBranchContact" class="credit-application-label">Branch Contact</label>
                        <input type="text" class="credit-application-input" id="bankBranchContact" name="bankBranchContact" value="{{model.bankBranchContact}}">
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label for="bankPhone" class="credit-application-label">Bank Branch Phone Number <span class="required">*</span></label>
                        <input type="tel" class="credit-application-input" id="bankPhone" name="bankPhone" required value="{{model.bankPhone}}">
                        <span class="credit-application-error-text" data-validation-error="bankPhone"></span>
                    </div>
                </div>

                <!-- Bank Address -->
                <fieldset class="credit-application-fieldset">
                    <legend class="credit-application-legend">Bank Address <span class="required">*</span></legend>
                    <div class="credit-application-row">
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="bankAddr1" class="credit-application-sublabel">Street Address <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="bankAddr1" name="bankAddr1" required value="{{model.bankAddr1}}">
                            <span class="credit-application-error-text" data-validation-error="bankAddr1"></span>
                        </div>
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="bankAddr2" class="credit-application-sublabel">Street Address Line 2</label>
                            <input type="text" class="credit-application-input" id="bankAddr2" name="bankAddr2" value="{{model.bankAddr2}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="bankCity" class="credit-application-sublabel">City <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="bankCity" name="bankCity" required value="{{model.bankCity}}">
                            <span class="credit-application-error-text" data-validation-error="bankCity"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="bankState" class="credit-application-sublabel">State / Province <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="bankState" name="bankState" required value="{{model.bankState}}">
                            <span class="credit-application-error-text" data-validation-error="bankState"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="bankPostal" class="credit-application-sublabel">Postal / Zip Code <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="bankPostal" name="bankPostal" required value="{{model.bankPostal}}">
                            <span class="credit-application-error-text" data-validation-error="bankPostal"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="bankCountry" class="credit-application-sublabel">Country <span class="required">*</span></label>
                            <select class="credit-application-select" id="bankCountry" name="bankCountry" required>
                                <option value="">Please Select</option>
                                {{#each countries}}
                                    <option value="{{code}}" {{#if isSelected}}selected{{/if}}>{{name}}</option>
                                {{/each}}
                            </select>
                            <span class="credit-application-error-text" data-validation-error="bankCountry"></span>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>

        <!-- SECTION 3: GENERAL INFORMATION -->
        <div class="credit-application-card">
            <div class="credit-application-card-header">
                <h2>General Information</h2>
            </div>
            <div class="credit-application-card-body">
                <div class="credit-application-row">
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="fedTaxId" class="credit-application-label">Federal Tax ID # <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="fedTaxId" name="fedTaxId" required value="{{model.fedTaxId}}">
                        <span class="credit-application-error-text" data-validation-error="fedTaxId"></span>
                    </div>
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="dunsNumber" class="credit-application-label">Dun &amp; Bradstreet #</label>
                        <input type="text" class="credit-application-input" id="dunsNumber" name="dunsNumber" value="{{model.dunsNumber}}" placeholder="If none type n/a">
                    </div>
                    <div class="credit-application-col-4 credit-application-group">
                        <label for="creditRequested" class="credit-application-label">Amount of Credit Requested <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="creditRequested" name="creditRequested" required value="{{model.creditRequested}}" placeholder="ex. $10,000">
                        <span class="credit-application-error-text" data-validation-error="creditRequested"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label class="credit-application-label">Are Purchase Orders Required? <span class="required">*</span></label>
                        <div class="credit-application-radio-group">
                            <label class="credit-application-radio-label">
                                <input type="radio" name="poRequired" value="Yes" required {{#ifEquals model.poRequired 'Yes'}}checked{{/ifEquals}}> Yes
                            </label>
                            <label class="credit-application-radio-label">
                                <input type="radio" name="poRequired" value="No" required {{#ifEquals model.poRequired 'No'}}checked{{/ifEquals}}> No
                            </label>
                        </div>
                        <span class="credit-application-error-text" data-validation-error="poRequired"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="checkingAcctNum" class="credit-application-label">Checking Acct. # <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="checkingAcctNum" name="checkingAcctNum" required value="{{model.checkingAcctNum}}">
                        <span class="credit-application-error-text" data-validation-error="checkingAcctNum"></span>
                    </div>
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="checkingRoutingNum" class="credit-application-label">Checking Acct. Routing # <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="checkingRoutingNum" name="checkingRoutingNum" required value="{{model.checkingRoutingNum}}">
                        <span class="credit-application-error-text" data-validation-error="checkingRoutingNum"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="savingsAcctNum" class="credit-application-label">Savings Acct. # <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="savingsAcctNum" name="savingsAcctNum" required value="{{model.savingsAcctNum}}">
                        <span class="credit-application-error-text" data-validation-error="savingsAcctNum"></span>
                    </div>
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="savingsRoutingNum" class="credit-application-label">Savings Acct. Routing # <span class="required">*</span></label>
                        <input type="text" class="credit-application-input" id="savingsRoutingNum" name="savingsRoutingNum" required value="{{model.savingsRoutingNum}}">
                        <span class="credit-application-error-text" data-validation-error="savingsRoutingNum"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label class="credit-application-checkbox-label">
                            <input type="checkbox" id="authReleaseInfo" name="authReleaseInfo" value="1" required {{#if model.authReleaseInfo}}checked{{/if}}>
                            <strong>Authorization to Release Confidential Information <span class="required">*</span></strong>: I/We authorize you our financial institution to release all information related to these accounts, accounts balances and activity to CTIconnect, LLC.
                        </label>
                        <span class="credit-application-error-text" data-validation-error="authReleaseInfo"></span>
                    </div>
                </div>

                <!-- SIGNATURE PAD 1: AUTHORIZATION SIGNATURE -->
                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label class="credit-application-label">Authorization Signature <span class="required">*</span></label>
                        <div class="signature-pad-wrapper" id="auth-signature-wrapper">
                            <div class="signature-pad-container">
                                <canvas class="signature-pad-canvas" id="auth-signature-canvas" width="400" height="180" aria-label="Authorization Signature canvas"></canvas>
                            </div>
                            <div class="signature-pad-controls">
                                <button type="button" class="credit-application-btn-secondary btn-clear-signature" data-target="auth">Clear Signature</button>
                                <span class="signature-status" id="auth-signature-status">Sign above</span>
                            </div>
                        </div>
                        <input type="hidden" id="authSignature" name="authSignature" value="{{model.authSignature}}">
                        <span class="credit-application-error-text" data-validation-error="authSignature"></span>
                    </div>
                </div>
            </div>
        </div>

        <!-- SECTION 4: BUSINESS REFERENCES -->
        <div class="credit-application-card">
            <div class="credit-application-card-header">
                <h2>Business References</h2>
            </div>
            <div class="credit-application-card-body">
                
                <!-- Reference 1 -->
                <fieldset class="credit-application-fieldset">
                    <legend class="credit-application-legend">Reference 1</legend>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1CompanyName" class="credit-application-label">Reference 1: Company Name <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref1CompanyName" name="ref1CompanyName" required value="{{model.ref1CompanyName}}">
                            <span class="credit-application-error-text" data-validation-error="ref1CompanyName"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1ContactName" class="credit-application-label">Contact Name <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref1ContactName" name="ref1ContactName" required value="{{model.ref1ContactName}}">
                            <span class="credit-application-error-text" data-validation-error="ref1ContactName"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1AccountType" class="credit-application-label">Type of Account</label>
                            <input type="text" class="credit-application-input" id="ref1AccountType" name="ref1AccountType" value="{{model.ref1AccountType}}">
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1Phone" class="credit-application-label">Phone Number <span class="required">*</span></label>
                            <input type="tel" class="credit-application-input" id="ref1Phone" name="ref1Phone" required value="{{model.ref1Phone}}">
                            <span class="credit-application-error-text" data-validation-error="ref1Phone"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1Fax" class="credit-application-label">Fax Number</label>
                            <input type="tel" class="credit-application-input" id="ref1Fax" name="ref1Fax" value="{{model.ref1Fax}}">
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1Email" class="credit-application-label">E-mail</label>
                            <input type="email" class="credit-application-input" id="ref1Email" name="ref1Email" value="{{model.ref1Email}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="ref1Addr1" class="credit-application-sublabel">Street Address <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref1Addr1" name="ref1Addr1" required value="{{model.ref1Addr1}}">
                            <span class="credit-application-error-text" data-validation-error="ref1Addr1"></span>
                        </div>
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="ref1Addr2" class="credit-application-sublabel">Street Address Line 2</label>
                            <input type="text" class="credit-application-input" id="ref1Addr2" name="ref1Addr2" value="{{model.ref1Addr2}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1City" class="credit-application-sublabel">City <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref1City" name="ref1City" required value="{{model.ref1City}}">
                            <span class="credit-application-error-text" data-validation-error="ref1City"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1State" class="credit-application-sublabel">State / Province <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref1State" name="ref1State" required value="{{model.ref1State}}">
                            <span class="credit-application-error-text" data-validation-error="ref1State"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1Postal" class="credit-application-sublabel">Postal / Zip Code</label>
                            <input type="text" class="credit-application-input" id="ref1Postal" name="ref1Postal" value="{{model.ref1Postal}}">
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref1Country" class="credit-application-sublabel">Country</label>
                            <select class="credit-application-select" id="ref1Country" name="ref1Country">
                                <option value="">Please Select</option>
                                {{#each countries}}
                                    <option value="{{code}}">{{name}}</option>
                                {{/each}}
                            </select>
                        </div>
                    </div>
                </fieldset>

                <!-- Reference 2 -->
                <fieldset class="credit-application-fieldset">
                    <legend class="credit-application-legend">Reference 2</legend>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2CompanyName" class="credit-application-label">Reference 2: Company Name <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref2CompanyName" name="ref2CompanyName" required value="{{model.ref2CompanyName}}">
                            <span class="credit-application-error-text" data-validation-error="ref2CompanyName"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2ContactName" class="credit-application-label">Contact Name <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref2ContactName" name="ref2ContactName" required value="{{model.ref2ContactName}}">
                            <span class="credit-application-error-text" data-validation-error="ref2ContactName"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2AccountType" class="credit-application-label">Type of Account 2</label>
                            <input type="text" class="credit-application-input" id="ref2AccountType" name="ref2AccountType" value="{{model.ref2AccountType}}">
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2Phone" class="credit-application-label">Phone Number 2 <span class="required">*</span></label>
                            <input type="tel" class="credit-application-input" id="ref2Phone" name="ref2Phone" required value="{{model.ref2Phone}}">
                            <span class="credit-application-error-text" data-validation-error="ref2Phone"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2Fax" class="credit-application-label">Fax Number 2</label>
                            <input type="tel" class="credit-application-input" id="ref2Fax" name="ref2Fax" value="{{model.ref2Fax}}">
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2Email" class="credit-application-label">E-mail 2</label>
                            <input type="email" class="credit-application-input" id="ref2Email" name="ref2Email" value="{{model.ref2Email}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="ref2Addr1" class="credit-application-sublabel">Street Address 2 <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref2Addr1" name="ref2Addr1" required value="{{model.ref2Addr1}}">
                            <span class="credit-application-error-text" data-validation-error="ref2Addr1"></span>
                        </div>
                        <div class="credit-application-col-12 credit-application-group">
                            <label for="ref2Addr2" class="credit-application-sublabel">Street Address Line 2</label>
                            <input type="text" class="credit-application-input" id="ref2Addr2" name="ref2Addr2" value="{{model.ref2Addr2}}">
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2City" class="credit-application-sublabel">City <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref2City" name="ref2City" required value="{{model.ref2City}}">
                            <span class="credit-application-error-text" data-validation-error="ref2City"></span>
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2State" class="credit-application-sublabel">State / Province <span class="required">*</span></label>
                            <input type="text" class="credit-application-input" id="ref2State" name="ref2State" required value="{{model.ref2State}}">
                            <span class="credit-application-error-text" data-validation-error="ref2State"></span>
                        </div>
                    </div>
                    <div class="credit-application-row">
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2Postal" class="credit-application-sublabel">Postal / Zip Code</label>
                            <input type="text" class="credit-application-input" id="ref2Postal" name="ref2Postal" value="{{model.ref2Postal}}">
                        </div>
                        <div class="credit-application-col-6 credit-application-group">
                            <label for="ref2Country" class="credit-application-sublabel">Country</label>
                            <select class="credit-application-select" id="ref2Country" name="ref2Country">
                                <option value="">Please Select</option>
                                {{#each countries}}
                                    <option value="{{code}}">{{name}}</option>
                                {{/each}}
                            </select>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>

        <!-- SECTION 5: TERMS AND CONDITIONS -->
        <div class="credit-application-card">
            <div class="credit-application-card-header">
                <h2>Terms and Conditions</h2>
            </div>
            <div class="credit-application-card-body">
                <p class="credit-application-legal-text">
                    All accounts are Cash/COD/Wire/Credit Card until a credit application has been completed, reviewed and approved. If any indebtedness incurred pursuant to this request for credit is not paid in full when due, the undersigned agrees to pay all costs of collection, including a reasonable attorneys fee. Any balance so remaining unpaid shall bear interest at the lesser rate of 1.5% per month or the maximum rate permitted by applicable law, until paid in full.
                </p>

                <div class="credit-application-group">
                    <label class="credit-application-checkbox-label">
                        <input type="checkbox" id="agreeTerms1" name="agreeTerms1" value="1" required {{#if model.agreeTerms1}}checked{{/if}}>
                        All invoices are to be paid 30 days from the date of the invoice. <span class="required">*</span>
                    </label>
                    <span class="credit-application-error-text" data-validation-error="agreeTerms1"></span>
                </div>

                <div class="credit-application-group">
                    <label class="credit-application-checkbox-label">
                        <input type="checkbox" id="agreeTerms2" name="agreeTerms2" value="1" required {{#if model.agreeTerms2}}checked{{/if}}>
                        Claims arising from invoices must be made within 7 business days of the invoice date. <span class="required">*</span>
                    </label>
                    <span class="credit-application-error-text" data-validation-error="agreeTerms2"></span>
                </div>

                <div class="credit-application-group">
                    <label class="credit-application-checkbox-label">
                        <input type="checkbox" id="agreeTerms3" name="agreeTerms3" value="1" required {{#if model.agreeTerms3}}checked{{/if}}>
                        By submitting this credit application, indicates your acceptance of the terms and conditions as stated and terms of service listed at cticonnect.com. In addition, you authorize CTIconnect, LLC. To make any and all inquiries necessary to process this credit application. <span class="required">*</span>
                    </label>
                    <span class="credit-application-error-text" data-validation-error="agreeTerms3"></span>
                </div>

                <!-- SIGNATURE PAD 2: TERMS SIGNATURE -->
                <div class="credit-application-row">
                    <div class="credit-application-col-12 credit-application-group">
                        <label class="credit-application-label">Agreed and Accepted, Signed <span class="required">*</span></label>
                        <div class="signature-pad-wrapper" id="terms-signature-wrapper">
                            <div class="signature-pad-container">
                                <canvas class="signature-pad-canvas" id="terms-signature-canvas" width="400" height="180" aria-label="Terms Signature canvas"></canvas>
                            </div>
                            <div class="signature-pad-controls">
                                <button type="button" class="credit-application-btn-secondary btn-clear-signature" data-target="terms">Clear Signature</button>
                                <span class="signature-status" id="terms-signature-status">Sign above</span>
                            </div>
                        </div>
                        <input type="hidden" id="termsSignature" name="termsSignature" value="{{model.termsSignature}}">
                        <span class="credit-application-error-text" data-validation-error="termsSignature"></span>
                    </div>
                </div>

                <div class="credit-application-row">
                    <div class="credit-application-col-6 credit-application-group">
                        <label for="applicationDate" class="credit-application-label">Today's Date <span class="required">*</span></label>
                        <input type="date" class="credit-application-input" id="applicationDate" name="applicationDate" required value="{{todayDate}}">
                        <span class="credit-application-error-text" data-validation-error="applicationDate"></span>
                    </div>
                </div>

                <div class="credit-application-actions">
                    <button type="submit" class="credit-application-btn-primary" id="btn-submit-credit-app" {{#if isSubmitting}}disabled{{/if}}>
                        {{#if isSubmitting}}
                            <span class="credit-application-spinner"></span> Submitting Application...
                        {{else}}
                            Submit Application
                        {{/if}}
                    </button>
                </div>
            </div>
        </div>

    </form>
    {{/unless}}
</section>
