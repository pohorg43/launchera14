.class public final Lm7/b1;
.super Lm7/j;
.source ""


# instance fields
.field public final a:Lm7/a1;


# direct methods
.method public constructor <init>(Lm7/a1;)V
    .registers 2

    invoke-direct {p0}, Lm7/j;-><init>()V

    iput-object p1, p0, Lm7/b1;->a:Lm7/a1;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lm7/b1;->a:Lm7/a1;

    invoke-interface {p0}, Lm7/a1;->dispose()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lm7/b1;->a:Lm7/a1;

    invoke-interface {p0}, Lm7/a1;->dispose()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DisposeOnCancel["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lm7/b1;->a:Lm7/a1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
