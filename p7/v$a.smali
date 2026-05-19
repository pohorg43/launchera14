.class public final Lp7/v$a;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/v;->a(Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.SubscribedFlowCollector"
    f = "Share.kt"
    l = {
        0x1a3,
        0x1a7
    }
    m = "onSubscription"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lp7/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lp7/v;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/v<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lp7/v$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/v$a;->d:Lp7/v;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lp7/v$a;->c:Ljava/lang/Object;

    iget p1, p0, Lp7/v$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp7/v$a;->e:I

    iget-object p1, p0, Lp7/v$a;->d:Lp7/v;

    invoke-virtual {p1, p0}, Lp7/v;->a(Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
