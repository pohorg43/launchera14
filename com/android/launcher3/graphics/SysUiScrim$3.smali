.class Lcom/android/launcher3/graphics/SysUiScrim$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/graphics/SysUiScrim;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/SysUiScrim;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOnChanged(Z)V
    .registers 2

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    :cond_7
    return-void
.end method

.method public onUserPresent()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    return-void
.end method
