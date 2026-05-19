.class public final Lm7/t;
.super Lm7/u1;
.source ""

# interfaces
.implements Lm7/s;


# instance fields
.field public final e:Lm7/u;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/u;)V
    .registers 2

    invoke-direct {p0}, Lm7/u1;-><init>()V

    iput-object p1, p0, Lm7/t;->e:Lm7/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .registers 2

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm7/x1;->J(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lm7/s1;
    .registers 1

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p1, p0, Lm7/t;->e:Lm7/u;

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object p0

    invoke-interface {p1, p0}, Lm7/u;->e(Lm7/f2;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm7/t;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
