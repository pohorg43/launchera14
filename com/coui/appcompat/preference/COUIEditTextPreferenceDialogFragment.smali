.class public Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source ""


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
    .registers 4

    new-instance v0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$style;->COUIAlertDialog_BottomAssignment:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_52

    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/edittext/COUIEditText;

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_52
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    :cond_5b
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    instance-of v2, v0, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    if-eqz v2, :cond_70

    move-object v1, v0

    check-cast v1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    :cond_70
    if-eqz v1, :cond_75

    iget-boolean v0, v1, Lcom/coui/appcompat/preference/COUIEditTextPreference;->e:Z

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v2, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Landroidx/appcompat/app/AlertDialog;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_c
    return-void
.end method
