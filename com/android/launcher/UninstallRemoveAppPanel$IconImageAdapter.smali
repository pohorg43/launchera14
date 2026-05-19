.class final Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/UninstallRemoveAppPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;,
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;,
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;

.field private static final ITEM_TYPE_ANIMATION_VIEW:I = 0x1

.field private static final ITEM_TYPE_NORMAL_VIEW:I


# instance fields
.field private isOnlyShortcut:Z

.field private mContext:Landroid/content/Context;

.field private final mItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/model/UninstallItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->Companion:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/model/UninstallItemInfoWithIcon;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "from(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->isOnlyShortcut:Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->getView$lambda$0(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final getView$lambda$0(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;ILandroid/view/View;)V
    .registers 5

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMCheckbox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p3

    if-nez p3, :cond_12

    goto :goto_2e

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMCheckbox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    :goto_2e
    iget-object p1, p1, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getItemView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/launcher/model/UninstallItemInfoWithIcon;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "mItemInfos[position]"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->getItem(I)Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "mItemInfos[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v2, ""

    if-nez v1, :cond_21

    move-object v1, v2

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_25
    iget-boolean v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->isOnlyShortcut:Z

    const-string/jumbo v4, "{\n                mLayou…ent, false)\n            }"

    const/4 v5, 0x0

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0156

    invoke-virtual {v3, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_46

    :cond_3a
    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0155

    invoke-virtual {v3, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_46
    new-instance v3, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    invoke-direct {v3, p3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;-><init>(Landroid/view/View;)V

    iget-object v4, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v6, 0x1

    if-eqz v4, :cond_11e

    iget-object v7, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_11e

    if-eqz v4, :cond_11e

    if-eqz v7, :cond_11e

    iget v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v7, v4, 0x4

    const v8, 0x7f08063e

    if-eqz v7, :cond_8d

    sget-object v4, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v4}, Lcom/android/common/util/CacheUtils;->getCloneAppDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v7

    if-eqz v7, :cond_74

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageResource(I)V

    :cond_74
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v7

    if-eqz v7, :cond_115

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v9, v9, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v4}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_115

    :cond_8d
    and-int/2addr v4, v6

    if-eqz v4, :cond_ba

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0807af

    invoke-virtual {v4, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v7

    if-eqz v7, :cond_a2

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageResource(I)V

    :cond_a2
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v7

    if-eqz v7, :cond_115

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v9, v9, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v4}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_115

    :cond_ba
    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v6, :cond_108

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    instance-of v7, v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    const/4 v9, 0x0

    if-eqz v7, :cond_cc

    check-cast v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_cd

    :cond_cc
    move-object v4, v9

    :goto_cd
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v7

    if-eqz v7, :cond_d6

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageResource(I)V

    :cond_d6
    if-eqz v4, :cond_dc

    invoke-virtual {v4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_dc
    if-nez v9, :cond_ec

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v4

    if-eqz v4, :cond_115

    iget-object v7, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_115

    :cond_ec
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v7

    if-eqz v7, :cond_115

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v9, v9, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_115

    :cond_108
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v4

    if-eqz v4, :cond_115

    iget-object v7, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_115
    :goto_115
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v4

    if-eqz v4, :cond_11e

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setBorderRectRadius(I)V

    :cond_11e
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvName()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_125

    goto :goto_132

    :cond_125
    iget-object v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v7, :cond_12b

    move-object v7, v2

    goto :goto_12f

    :cond_12b
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_12f
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_132
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMCheckbox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v4

    if-nez v4, :cond_139

    goto :goto_14d

    :cond_139
    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v7}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v7

    if-eqz v7, :cond_149

    const/4 v7, 0x2

    goto :goto_14a

    :cond_149
    move v7, v5

    :goto_14a
    invoke-virtual {v4, v7}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_14d
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_19f

    invoke-virtual {p2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result v4

    if-nez v4, :cond_19f

    sget-object v4, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v4}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/common/util/PackageUtils;->isNeedShowUninstallReminder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19f

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvAlertInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_177

    goto :goto_17a

    :cond_177
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_17a
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_182

    goto/16 :goto_264

    :cond_182
    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_18b

    goto :goto_196

    :cond_18b
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_196
    invoke-static {v4, v2, v1}, Lcom/android/common/util/LauncherUtil;->getRetainInfoFromApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_264

    :cond_19f
    invoke-virtual {p2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result p2

    const/16 v4, 0x8

    const-string v7, "format(format, *args)"

    if-ne p2, v6, :cond_1e3

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_1b0

    goto :goto_1d6

    :cond_1b0
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12020e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mContext.resources.getSt…ete_icon_panel_sub_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d6
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvAlertInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_1de

    goto/16 :goto_264

    :cond_1de
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_264

    :cond_1e3
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvAlertInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_1ea

    goto :goto_1ed

    :cond_1ea
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1ed
    iget-object p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    if-ne p2, v4, :cond_23b

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_200

    goto :goto_20b

    :cond_200
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_20b
    invoke-virtual {p2, v2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23b

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_218

    goto :goto_264

    :cond_218
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f12066e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mContext.getString(R.str…anel_multi_app_sub_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_264

    :cond_23b
    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_242

    goto :goto_264

    :cond_242
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f12066a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mContext.getString(R.str…tall_panel_app_sub_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_264
    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v6

    if-ne p1, p2, :cond_278

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getItemDivider()Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_274

    goto :goto_278

    :cond_274
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_278
    :goto_278
    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;

    if-eqz p2, :cond_288

    invoke-virtual {v3}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getItemView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/launcher/r0;

    invoke-direct {v0, v3, p0, p1}, Lcom/android/launcher/r0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_288
    return-object p3
.end method

.method public final setOnItemClickLitener(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;

    return-void
.end method
