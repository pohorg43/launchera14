.class public final synthetic Lcom/android/wm/shell/transition/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/transition/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/transition/s;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/s;-><init>()V

    sput-object v0, Lcom/android/wm/shell/transition/s;->a:Lcom/android/wm/shell/transition/s;

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

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions;->g(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
