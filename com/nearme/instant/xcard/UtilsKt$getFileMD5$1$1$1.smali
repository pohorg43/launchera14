.class final Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Byte;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;

    invoke-direct {v0}, Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;-><init>()V

    sput-object v0, Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;->INSTANCE:Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(B)Ljava/lang/CharSequence;
    .registers 3

    and-int/lit16 p0, p1, 0xff

    const/16 p1, 0x10

    invoke-static {p1}, Lk7/a;->a(I)I

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(this, checkRadix(radix))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lk7/q;->G(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;->invoke(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
