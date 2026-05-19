.class public final synthetic Lcom/android/wm/shell/transition/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/IOplusTaskListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/w;->a:Lcom/android/wm/shell/transition/IOplusTaskListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/w;->a:Lcom/android/wm/shell/transition/IOplusTaskListener;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->c(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method
