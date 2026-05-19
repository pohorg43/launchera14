.class public final Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string/jumbo v0, "onChange isRegionDark: "

    const-string v1, "OplusStashedHandleViewController"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$getMIsBgDark$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Z

    move-result v0

    if-eq v0, p1, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$setMIsBgDark$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$getMIsBgDark$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Z

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$updateHandleViewBg(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;ZZ)V

    :cond_1f
    return-void
.end method
