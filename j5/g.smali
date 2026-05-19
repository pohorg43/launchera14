.class public final Lj5/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh6/f;

.field public static final b:Lh6/f;

.field public static final c:Lh6/f;

.field public static final d:Lh6/f;

.field public static final e:Lh6/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "message"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"message\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj5/g;->a:Lh6/f;

    const-string v0, "replaceWith"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"replaceWith\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj5/g;->b:Lh6/f;

    const-string v0, "level"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"level\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj5/g;->c:Lh6/f;

    const-string v0, "expression"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"expression\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj5/g;->d:Lh6/f;

    const-string v0, "imports"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"imports\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj5/g;->e:Lh6/f;

    return-void
.end method
