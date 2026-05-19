.class public final synthetic Lcom/android/wm/shell/dagger/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/dagger/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/dagger/c;

    invoke-direct {v0}, Lcom/android/wm/shell/dagger/c;-><init>()V

    sput-object v0, Lcom/android/wm/shell/dagger/c;->a:Lcom/android/wm/shell/dagger/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lz3/a;

    invoke-interface {p1}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    return-object p0
.end method
