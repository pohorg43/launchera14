.class public Lcom/coui/appcompat/preference/COUIMenuPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/CharSequence;

.field public b:[Ljava/lang/CharSequence;

.field public c:[I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

.field public i:Z

.field public j:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field public k:Z

.field public l:I

.field public final m:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    sget p4, Landroidx/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->i:Z

    iput-boolean p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->k:Z

    const/4 p4, -0x1

    iput p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->l:I

    new-instance v0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIMenuPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMenuPreference;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->m:Landroid/widget/AdapterView$OnItemClickListener;

    sget-object v0, Lcom/support/list/R$styleable;->COUIMenuPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/list/R$styleable;->COUIMenuPreference_android_entryValues:I

    invoke-static {p2, p3, p3}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    sget p3, Lcom/support/list/R$styleable;->COUIMenuPreference_android_entries:I

    invoke-static {p2, p3, p3}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->b:[Ljava/lang/CharSequence;

    sget p3, Lcom/support/list/R$styleable;->COUIMenuPreference_maxShowItemCount:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->l:I

    sget p3, Lcom/support/list/R$styleable;->COUIMenuPreference_groupIds:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_4c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->c:[I

    :cond_4c
    sget p1, Lcom/support/list/R$styleable;->COUIMenuPreference_android_value:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->b:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->d:Ljava/lang/String;

    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->e:Ljava/lang/String;

    if-nez p0, :cond_1a

    return-object v1

    :cond_1a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_22

    const-string v0, ""

    :cond_22
    aput-object v0, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return-object v1

    :cond_2f
    const-string v0, "COUIMenuPreference"

    const-string v1, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-nez v0, :cond_14

    new-instance v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->k:Z

    iget-boolean v1, p1, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->d:Z

    if-eqz v1, :cond_2b

    iget-object v1, p1, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v1, :cond_2b

    iput-boolean v0, v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->N:Z

    :cond_2b
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->i:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->b(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->j:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iput-object p1, v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->c:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    :cond_38
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->m:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iput-object v0, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->l:I

    if-eqz p1, :cond_46

    iput p0, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->U:I

    :cond_46
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_22

    :cond_f
    check-cast p1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Z

    if-nez v0, :cond_21

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_21
    return-void

    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->d:Ljava/lang/String;

    iput-object p0, v1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;->a:Ljava/lang/String;

    return-object v1
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->i:Z

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->h:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->b(Z)V

    :cond_c
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 13

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->b:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Z

    if-eqz p1, :cond_34

    array-length v1, p1

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_34

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    new-instance v10, Lcom/coui/appcompat/poplist/PopupListItem;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->c:[I

    if-eqz v1, :cond_23

    aget v1, v1, v0

    goto :goto_24

    :cond_23
    const/4 v1, -0x1

    :goto_24
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    iput v1, v10, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_34
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 13

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Z

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->b:[Ljava/lang/CharSequence;

    if-nez v1, :cond_38

    if-eqz p1, :cond_38

    array-length v1, p1

    if-lez v1, :cond_38

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_13
    array-length v1, p1

    if-ge v0, v1, :cond_38

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    new-instance v10, Lcom/coui/appcompat/poplist/PopupListItem;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->c:[I

    if-eqz v1, :cond_27

    aget v1, v1, v0

    goto :goto_28

    :cond_27
    const/4 v1, -0x1

    :goto_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    iput v1, v10, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_38
    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->j:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->e:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->e:Ljava/lang/String;

    goto :goto_1d

    :cond_d
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->e:Ljava/lang/String;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Z

    if-nez v0, :cond_75

    :cond_e
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Z

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x0

    move v2, v0

    :goto_22
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v4, v3, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_5c

    if-eqz p1, :cond_58

    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_58

    array-length v6, v6

    :cond_3f
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_58

    iget-object v7, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f

    iget-object v7, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    goto :goto_59

    :cond_58
    move v6, v0

    :goto_59
    aget-object v5, v5, v6

    goto :goto_5d

    :cond_5c
    move-object v5, p1

    :goto_5d
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_68

    iput-boolean v1, v3, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    iput-boolean v1, v3, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    goto :goto_6c

    :cond_68
    iput-boolean v0, v3, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    iput-boolean v0, v3, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_6f
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_75
    return-void
.end method
