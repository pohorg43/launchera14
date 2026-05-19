.class public Lh1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz0/w<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lh1/b;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lh1/b;->a:[B

    array-length p0, p0

    return p0
.end method

.method public b()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[B>;"
        }
    .end annotation

    const-class p0, [B

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh1/b;->a:[B

    return-object p0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
