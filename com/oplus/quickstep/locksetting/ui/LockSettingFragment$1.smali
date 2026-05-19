.class Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;
.super Lcom/coui/appcompat/preference/COUISwitchPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->generateSwitchPreference(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUISwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;

.field public final synthetic val$packageNameUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;

    iput-object p3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;->val$packageNameUserId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;->val$packageNameUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->access$000(Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ed1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->access$100(Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_4d

    :cond_4c
    move-object p0, v3

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1, v3, v3, p0, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
