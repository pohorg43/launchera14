.class public Lcom/coui/appcompat/preference/COUIPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source ""


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# instance fields
.field private mEnableInternalDivider:Z

.field private mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    return-void
.end method


# virtual methods
.method public getItemDecoration()Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    sget p3, Lcom/support/list/R$layout;->coui_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnablePointerDownAction(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    :cond_7
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    move-result-object p1

    goto :goto_40

    :cond_1a
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_40

    :cond_27
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_40

    :cond_34
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    move-result-object p1

    :goto_40
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_4c
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz p1, :cond_38

    iget-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_2f

    new-instance p1, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    :cond_2f
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_38
    return-void
.end method

.method public setEnableCOUIPreferenceDivider(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_2c

    new-instance p1, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    :cond_2c
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_45

    :cond_36
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1d
    new-instance v0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_3b
    return-void
.end method
