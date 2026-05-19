.class public final Lcom/oplus/quickstep/utils/GsonUtils$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/GsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGsonUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonUtils.kt\ncom/oplus/quickstep/utils/GsonUtils$Companion\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,34:1\n26#2:35\n26#2:36\n*S KotlinDebug\n*F\n+ 1 GsonUtils.kt\ncom/oplus/quickstep/utils/GsonUtils$Companion\n*L\n27#1:35\n30#1:36\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/GsonUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final analyzeJsonOfArrayString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    :try_start_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_c

    move v1, p0

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-ne v1, p0, :cond_12

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_26

    :cond_12
    move p0, v0

    :goto_13
    if-eqz p0, :cond_23

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_2a

    :cond_23
    new-array p0, v0, [Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_10

    goto :goto_2a

    :goto_26
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_33

    :cond_31
    new-array p0, v0, [Ljava/lang/String;

    :goto_33
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
