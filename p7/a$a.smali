.class public final Lp7/a$a;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/a;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.AbstractFlow"
    f = "Flow.kt"
    l = {
        0xe6
    }
    m = "collect"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lp7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lp7/a;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/a<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lp7/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/a$a;->c:Lp7/a;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lp7/a$a;->b:Ljava/lang/Object;

    iget p1, p0, Lp7/a$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp7/a$a;->d:I

    iget-object p1, p0, Lp7/a$a;->c:Lp7/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp7/a;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
