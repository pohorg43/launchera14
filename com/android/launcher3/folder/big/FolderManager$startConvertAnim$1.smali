.class public final Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/FolderManager;->startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $bigIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic $smallIcon:Lcom/android/launcher3/folder/OplusFolderIcon;

.field public final synthetic $toBig:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;ZLcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$runnable:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$toBig:Z

    iput-object p3, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$bigIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-object p4, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$smallIcon:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$toBig:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$bigIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_10

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$smallIcon:Lcom/android/launcher3/folder/OplusFolderIcon;

    :goto_10
    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->addRecommendFolder(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method
