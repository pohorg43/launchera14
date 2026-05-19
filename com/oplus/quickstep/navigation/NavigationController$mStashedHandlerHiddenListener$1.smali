.class public final Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/navigation/NavigationController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/navigation/NavigationController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLjava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;->onChange$lambda$0(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method private static final onChange$lambda$0(ZLjava/util/function/Consumer;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->access$getMStashedHandlerHiddenListeners$p(Lcom/oplus/quickstep/navigation/NavigationController;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/i;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->notifyModeChange mStashedHandlerHiddenListener isHidden:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavigationController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
