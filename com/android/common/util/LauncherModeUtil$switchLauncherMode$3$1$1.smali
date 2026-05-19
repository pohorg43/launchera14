.class final Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.common.util.LauncherModeUtil$switchLauncherMode$3$1$1"
    f = "LauncherModeUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $postExecute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $result:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ll4/d<",
            "-",
            "Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->$postExecute:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;

    iget-object v0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->$postExecute:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->label:I

    if-nez v0, :cond_21

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->$postExecute:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->setChangingMode(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
