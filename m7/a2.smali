.class public final Lm7/a2;
.super Lm7/j2;
.source ""


# instance fields
.field public final d:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/f;Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm7/j2;-><init>(Ll4/f;Z)V

    invoke-static {p2, p0, p0}, Lm4/d;->f(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p1

    iput-object p1, p0, Lm7/a2;->d:Ll4/d;

    return-void
.end method


# virtual methods
.method public c0()V
    .registers 2

    iget-object v0, p0, Lm7/a2;->d:Ll4/d;

    invoke-static {v0, p0}, Ls7/a;->a(Ll4/d;Ll4/d;)V

    return-void
.end method
