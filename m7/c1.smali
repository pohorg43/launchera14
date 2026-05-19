.class public final Lm7/c1;
.super Lm7/w1;
.source ""


# instance fields
.field public final e:Lm7/a1;


# direct methods
.method public constructor <init>(Lm7/a1;)V
    .registers 2

    invoke-direct {p0}, Lm7/w1;-><init>()V

    iput-object p1, p0, Lm7/c1;->e:Lm7/a1;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lm7/c1;->e:Lm7/a1;

    invoke-interface {p0}, Lm7/a1;->dispose()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lm7/c1;->e:Lm7/a1;

    invoke-interface {p0}, Lm7/a1;->dispose()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
