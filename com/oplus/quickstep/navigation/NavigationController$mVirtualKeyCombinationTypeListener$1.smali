.class public final Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;
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

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;->onChange$lambda$0(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method private static final onChange$lambda$0(ZLcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/oplus/quickstep/common/IObserverListener;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyModeChange()V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->access$getMNavbarCombinationListeners$p(Lcom/oplus/quickstep/navigation/NavigationController;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/i;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->notifyModeChange mVirtualKeyCombinationTypeListener isRecentLeftOfHome:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavigationController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
