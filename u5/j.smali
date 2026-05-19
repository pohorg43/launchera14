.class public final Lu5/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu5/i;


# instance fields
.field public a:Lz0/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly5/g;)Li5/e;
    .registers 3

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu5/j;->a:Lz0/t;

    if-eqz p0, :cond_a

    goto :goto_10

    :cond_a
    const-string p0, "resolver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_10
    invoke-virtual {p0, p1}, Lz0/t;->b(Ly5/g;)Li5/e;

    move-result-object p0

    return-object p0
.end method
