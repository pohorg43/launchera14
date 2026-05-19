.class public abstract Lf7/e;
.super Lf7/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lf7/a<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public a:Lf7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lf7/l;->a:Lf7/l;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.util.ArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "arrayMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lf7/a;-><init>()V

    iput-object v0, p0, Lf7/e;->a:Lf7/c;

    return-void
.end method


# virtual methods
.method public final a()Lf7/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf7/c<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lf7/e;->a:Lf7/c;

    return-object p0
.end method
