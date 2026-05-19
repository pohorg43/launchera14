.class public final Lk1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu0/a$a;


# instance fields
.field public final a:La1/d;

.field public final b:La1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(La1/d;La1/b;)V
    .registers 3
    .param p2  # La1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/a;->a:La1/d;

    iput-object p2, p0, Lk1/a;->b:La1/b;

    return-void
.end method


# virtual methods
.method public a(I)[B
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lk1/a;->b:La1/b;

    if-nez p0, :cond_7

    new-array p0, p1, [B

    return-object p0

    :cond_7
    const-class v0, [B

    invoke-interface {p0, p1, v0}, La1/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
