.class public Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source ""


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "ListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "ListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_FOLLOWHAND:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

.field private static final SAVE_STATE_INDEX:Ljava/lang/String; = "COUIListPreferenceDialogFragment.index"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "COUIListPreferenceDialogFragment.message"

.field private static final SAVE_STATE_POSITION:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_POSITION"

.field private static final SAVE_STATE_SUMMARYS:Ljava/lang/String; = "COUListPreferenceDialogFragment.summarys"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "COUIListPreferenceDialogFragment.title"


# instance fields
.field private mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private mClickedDialogEntryIndex:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogPosition:[I

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIfFollowHand:Z

.field private mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mIfFollowHand:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;I)I
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    return p1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;
    .registers 4

    new-instance v0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_5e

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    iget-boolean p1, p1, Lcom/coui/appcompat/preference/COUIListPreference;->j:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mIfFollowHand:Z

    goto :goto_9f

    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    const/4 v0, -0x1

    const-string v1, "COUIListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const-string v0, "COUIListPreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v0, "COUIListPreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v0, "COUListPreferenceDialogFragment.summarys"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogPosition:[I

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mIfFollowHand:Z

    :goto_9f
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    iget v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_14

    array-length v3, p1

    if-ge v2, v3, :cond_14

    array-length p1, p1

    new-array p1, p1, [Z

    aput-boolean v0, p1, v2

    move-object v9, p1

    goto :goto_15

    :cond_14
    move-object v9, v1

    :goto_15
    new-instance p1, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$layout;->coui_select_dialog_singlechoice:I

    iget-object v7, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    new-instance v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$style;->COUIAlertDialog_BottomAssignment:I

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v3, Lcom/support/list/R$string;->dialog_cancel:I

    invoke-virtual {v2, v3, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance v3, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$2;-><init>(Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;)V

    invoke-virtual {v2, p1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-boolean p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mIfFollowHand:Z

    if-eqz p1, :cond_73

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v2, :cond_5c

    iget-object v1, v2, Lcom/coui/appcompat/preference/COUIListPreference;->g:Landroid/view/View;

    iget-object p1, v2, Lcom/coui/appcompat/preference/COUIListPreference;->f:Landroid/graphics/Point;

    :cond_5c
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogPosition:[I

    if-eqz v2, :cond_6c

    new-instance p1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogPosition:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    aget v0, v2, v0

    invoke-direct {p1, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    :cond_6c
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a(Landroid/view/View;Landroid/graphics/Point;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_73
    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDialogClosed(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    if-nez p1, :cond_a

    goto :goto_2e

    :cond_a
    iget p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_2e

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v0

    if-ge p1, v1, :cond_2e

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const-string v1, "COUIListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIListPreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_24

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIListPreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    const-string v1, "COUListPreferenceDialogFragment.summarys"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogPosition:[I

    const-string v1, "ListPreferenceDialogFragment.SAVE_STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mIfFollowHand:Z

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_14

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s()V

    :cond_14
    :goto_14
    return-void
.end method
