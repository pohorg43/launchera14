.class public final Ld5/g$g$d;
.super Ld5/g$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/g$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCallerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallerImpl.kt\nkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Instance\n+ 2 CallerImpl.kt\nkotlin/reflect/jvm/internal/calls/CallerImpl$Companion\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,250:1\n239#2:251\n26#3:252\n*S KotlinDebug\n*F\n+ 1 CallerImpl.kt\nkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Instance\n*L\n113#1:251\n113#1:252\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 5

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Ld5/g$g;-><init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;I)V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ld5/f$a;->a(Ld5/f;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_12

    new-array p1, v0, [Ljava/lang/Object;

    goto :goto_17

    :cond_12
    array-length v0, p1

    invoke-static {p1, v3, v0}, Li4/j;->k([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    :goto_17
    invoke-virtual {p0, v1, p1}, Ld5/g$g;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
