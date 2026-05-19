.class public final Lp7/s$a;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/s;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.StateFlowImpl"
    f = "StateFlow.kt"
    l = {
        0x180,
        0x18c,
        0x191
    }
    m = "collect"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lp7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Lp7/s;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/s<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lp7/s$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/s$a;->g:Lp7/s;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lp7/s$a;->f:Ljava/lang/Object;

    iget p1, p0, Lp7/s$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp7/s$a;->h:I

    iget-object p1, p0, Lp7/s$a;->g:Lp7/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp7/s;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
