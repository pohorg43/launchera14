.class public final Lh6/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lk7/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lk7/f;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, Lk7/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh6/g;->a:Lk7/f;

    return-void
.end method

.method public static final a(I)Lh6/f;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_context_receiver_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string v0, "identifier(\"_context_receiver_$index\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
