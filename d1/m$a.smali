.class public Ld1/m$a;
.super Lt1/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/c<",
        "Ld1/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld1/m;J)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lt1/c;-><init>(J)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ld1/m$b;

    invoke-virtual {p1}, Ld1/m$b;->b()V

    return-void
.end method
