.class public final Lp7/h$c$a$a;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/h$c$a;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1"
    f = "Delay.kt"
    l = {
        0xd2
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lp7/h$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/h$c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lp7/h$c$a;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/h$c$a<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lp7/h$c$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/h$c$a$a;->b:Lp7/h$c$a;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lp7/h$c$a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lp7/h$c$a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp7/h$c$a$a;->c:I

    iget-object p1, p0, Lp7/h$c$a$a;->b:Lp7/h$c$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp7/h$c$a;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
