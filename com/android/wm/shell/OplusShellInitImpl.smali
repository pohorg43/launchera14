.class public Lcom/android/wm/shell/OplusShellInitImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/OplusShellInitImpl$OplusInitImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusShellInitImpl"


# instance fields
.field private final mImpl:Lcom/android/wm/shell/OplusShellInitImpl$OplusInitImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mZoomController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/ZoomController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/ZoomController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/OplusShellInitImpl$OplusInitImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/OplusShellInitImpl$OplusInitImpl;-><init>(Lcom/android/wm/shell/OplusShellInitImpl;Lcom/android/wm/shell/OplusShellInitImpl$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mImpl:Lcom/android/wm/shell/OplusShellInitImpl$OplusInitImpl;

    iput-object p1, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mZoomController:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    sget-object p0, Lcom/android/wm/shell/OplusShellInitImpl;->TAG:Ljava/lang/String;

    const-string p1, "OplusShellInitImpl is create"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/OplusShellInitImpl;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/OplusShellInitImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/OplusShellInitImpl;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    sget-object v0, Lcom/android/wm/shell/OplusShellInitImpl;->TAG:Ljava/lang/String;

    const-string v1, "OplusShellInitImpl is init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mZoomController:Ljava/util/Optional;

    sget-object v0, Lcom/android/launcher3/n0;->c:Lcom/android/launcher3/n0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public asShellInit()Lcom/android/wm/shell/OplusShellInit;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/OplusShellInitImpl;->mImpl:Lcom/android/wm/shell/OplusShellInitImpl$OplusInitImpl;

    return-object p0
.end method
