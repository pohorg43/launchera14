.class public final Lcom/android/launcher3/folder/big/FolderFunctionGuide$folderPopClickTip$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderPopClickTip(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$getPopClickTip$p()Lcom/coui/appcompat/tooltips/COUIToolTips;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_9
    return-void
.end method
