.class public final Lu6/e0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh6/c;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu6/e0;->a:Lh6/c;

    new-instance v0, Lh6/a;

    sget-object v1, Lf5/j;->k:Lh6/c;

    const-string v2, "suspend"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    const-string v3, "identifier(\"suspend\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lh6/a;-><init>(Lh6/c;Lh6/f;)V

    return-void
.end method
