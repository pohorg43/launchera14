.class public Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
.super Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
.source ""


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

.field private static final SAVE_STATE_FOLLOWHAND:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_BUTTON_TEXT:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.negativeButtonTextitle"

.field private static final SAVE_STATE_POSITION:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_POSITION"

.field private static final SAVE_STATE_POSITIVE_BUTTON_TEXT:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.positiveButtonText"

.field private static final SAVE_STATE_SUMMARYS:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.summarys"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.title"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.values"

.field private static final TAG:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment-hkl"


# instance fields
.field private mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

.field private mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private mCheckboxStates:[Z

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogPosition:[I

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIfFollowHand:Z

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    return-void
.end method

.method private getCheckboxStatesFromValues(Ljava/util/Set;)[Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method private getSelectedValues()Ljava/util/Set;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    const/4 v2, 0x0

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_22

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v4, v3

    if-ge v2, v4, :cond_22

    aget-boolean v4, v1, v2

    if-eqz v4, :cond_1f

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
    .registers 4

    new-instance v0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;-><init>()V

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
    .registers 3

    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_56

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->getCheckboxStatesFromValues(Ljava/util/Set;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mCheckboxStates:[Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    iget-boolean p1, p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->j:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    goto :goto_a6

    :cond_56
    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.summarys"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.positiveButtonText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.negativeButtonTextitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mCheckboxStates:[Z

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogPosition:[I

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    :goto_a6
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$layout;->coui_select_dialog_multichoice:I

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mCheckboxStates:[Z

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    new-instance p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$style;->COUIAlertDialog_BottomAssignment:I

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    if-eqz v0, :cond_6b

    const/4 p1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz v1, :cond_53

    iget-object p1, v1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->g:Landroid/view/View;

    iget-object v0, v1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->f:Landroid/graphics/Point;

    :cond_53
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogPosition:[I

    if-eqz v1, :cond_64

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogPosition:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    :cond_64
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a(Landroid/view/View;Landroid/graphics/Point;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_6b
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDialogClosed(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->getSelectedValues()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz p0, :cond_21

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_21
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.positiveButtonText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.negativeButtonTextitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.summarys"

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

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogPosition:[I

    const-string v1, "ListPreferenceDialogFragment.SAVE_STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

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
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s()V

    :cond_14
    :goto_14
    return-void
.end method
