.class public final Le8/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Le8/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Le8/i;->a:Z

    iput-boolean v0, p0, Le8/i$a;->a:Z

    iget-object v0, p1, Le8/i;->c:[Ljava/lang/String;

    iput-object v0, p0, Le8/i$a;->b:[Ljava/lang/String;

    iget-object v0, p1, Le8/i;->d:[Ljava/lang/String;

    iput-object v0, p0, Le8/i$a;->c:[Ljava/lang/String;

    iget-boolean p1, p1, Le8/i;->b:Z

    iput-boolean p1, p0, Le8/i$a;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le8/i$a;->a:Z

    return-void
.end method


# virtual methods
.method public varargs a([Le8/g;)Le8/i$a;
    .registers 5

    iget-boolean v0, p0, Le8/i$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget-object v2, p1, v1

    iget-object v2, v2, Le8/g;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0}, Le8/i$a;->b([Ljava/lang/String;)Le8/i$a;

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs b([Ljava/lang/String;)Le8/i$a;
    .registers 3

    iget-boolean v0, p0, Le8/i$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Le8/i$a;->b:[Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one cipher suite is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Z)Le8/i$a;
    .registers 3

    iget-boolean v0, p0, Le8/i$a;->a:Z

    if-eqz v0, :cond_7

    iput-boolean p1, p0, Le8/i$a;->d:Z

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS extensions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs d([Le8/d0;)Le8/i$a;
    .registers 5

    iget-boolean v0, p0, Le8/i$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget-object v2, p1, v1

    iget-object v2, v2, Le8/d0;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0}, Le8/i$a;->e([Ljava/lang/String;)Le8/i$a;

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs e([Ljava/lang/String;)Le8/i$a;
    .registers 3

    iget-boolean v0, p0, Le8/i$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Le8/i$a;->c:[Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one TLS version is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
