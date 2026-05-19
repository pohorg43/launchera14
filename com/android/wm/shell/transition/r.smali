.class public final synthetic Lcom/android/wm/shell/transition/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic b:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/r;->a:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/transition/r;->b:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iput p3, p0, Lcom/android/wm/shell/transition/r;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/transition/r;->d:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/r;->a:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, p0, Lcom/android/wm/shell/transition/r;->b:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget v2, p0, Lcom/android/wm/shell/transition/r;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/r;->d:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/Transitions;->c(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void
.end method
