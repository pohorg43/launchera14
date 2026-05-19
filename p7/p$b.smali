.class public final Lp7/p$b;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/p;->h(Lp7/p;Lp7/e;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln4/c;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.SharedFlowImpl"
    f = "SharedFlow.kt"
    l = {
        0x174,
        0x17b,
        0x17e
    }
    m = "collect$suspendImpl"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lp7/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lp7/p;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/p<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lp7/p$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/p$b;->f:Lp7/p;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lp7/p$b;->e:Ljava/lang/Object;

    iget p1, p0, Lp7/p$b;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp7/p$b;->g:I

    iget-object p1, p0, Lp7/p$b;->f:Lp7/p;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lp7/p;->h(Lp7/p;Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
