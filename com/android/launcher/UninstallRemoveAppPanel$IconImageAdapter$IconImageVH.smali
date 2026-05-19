.class public final Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconImageVH"
.end annotation


# instance fields
.field private final itemDivider:Landroid/widget/ImageView;

.field private final itemView:Landroid/view/View;

.field private mAnimView:Lcom/sdk/deleteview/DeleteView;

.field private final mCheckbox:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

.field private final mTvAlertInfo:Landroid/widget/TextView;

.field private final mTvName:Landroid/widget/TextView;

.field private final mTvUninstallInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    const v0, 0x7f0a009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdk/deleteview/DeleteView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mAnimView:Lcom/sdk/deleteview/DeleteView;

    const v0, 0x7f0a0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const v0, 0x7f0a0667

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvName:Landroid/widget/TextView;

    const v0, 0x7f0a065c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvAlertInfo:Landroid/widget/TextView;

    const v0, 0x7f0a0683

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvUninstallInfo:Landroid/widget/TextView;

    const v0, 0x7f0a0183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mCheckbox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    const v0, 0x7f0a035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemDivider:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Landroid/view/View;ILjava/lang/Object;)Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->copy(Landroid/view/View;)Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public final copy(Landroid/view/View;)Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;
    .registers 2

    const-string p0, "itemView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    invoke-direct {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getItemDivider()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemDivider:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getItemView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public final getMAnimView()Lcom/sdk/deleteview/DeleteView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mAnimView:Lcom/sdk/deleteview/DeleteView;

    return-object p0
.end method

.method public final getMCheckbox()Lcom/coui/appcompat/checkbox/COUICheckBox;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mCheckbox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-object p0
.end method

.method public final getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-object p0
.end method

.method public final getMTvAlertInfo()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvAlertInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMTvName()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMTvUninstallInfo()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvUninstallInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setMAnimView(Lcom/sdk/deleteview/DeleteView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mAnimView:Lcom/sdk/deleteview/DeleteView;

    return-void
.end method

.method public final setMNormalView(Lcom/coui/appcompat/imageview/COUIRoundImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "IconImageVH(itemView="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
