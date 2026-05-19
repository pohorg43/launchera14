.class public final Lcom/oplus/utrace/sdk/UTraceCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

.field private static final KEY_LEGACY:Ljava/lang/String; = "utracecontext"

.field private static final KEY_NEW:Ljava/lang/String; = "utrace2"

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.Compat"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/UTraceCompat;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic readFromBundle$default(Lcom/oplus/utrace/sdk/UTraceCompat;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    const-string p2, "utracecontext"

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const-string p3, "utrace2"

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readFromUri$default(Lcom/oplus/utrace/sdk/UTraceCompat;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    const-string p2, "utracecontext"

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const-string p3, "utrace2"

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic writeToBundle$default(Lcom/oplus/utrace/sdk/UTraceCompat;Lcom/oplus/utrace/sdk/UTraceContext;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    const-string p3, "utracecontext"

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_c

    const-string p4, "utrace2"

    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToBundle(Lcom/oplus/utrace/sdk/UTraceContext;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic writeToUri$default(Lcom/oplus/utrace/sdk/UTraceCompat;Lcom/oplus/utrace/sdk/UTraceContext;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri$Builder;
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    const-string p3, "utracecontext"

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_c

    const-string p4, "utrace2"

    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToUri(Lcom/oplus/utrace/sdk/UTraceContext;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final readFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 5

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "legacyKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newKey"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_10
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_23

    :cond_1d
    sget-object p2, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p2, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0

    :goto_23
    return-object p0

    :cond_24
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContext;

    if-nez p1, :cond_2d

    goto :goto_33

    :cond_2d
    sget-object p2, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p2, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromLegacyObj$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    :goto_33
    return-object p0

    :catchall_34
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_40

    goto :goto_51

    :cond_40
    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "readFromBundle, error: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "UTrace.Sdk.Compat"

    invoke-virtual {p2, v0, p3, p1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    return-object p0
.end method

.method public final readFromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3

    const-string p0, "jsonString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    sget-object p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_18

    goto :goto_25

    :cond_18
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "readFromJsonString, error: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTrace.Sdk.Compat"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final readFromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 5

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "legacyKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newKey"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_10
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2b

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1e

    move-object p1, p0

    goto :goto_37

    :cond_1e
    sget-object p2, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    sget-object p3, Lcom/oplus/utrace/sdk/UTraceContext;->CREATOR:Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;

    invoke-virtual {p3, p1}, Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;->unserialize(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromLegacyObj$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0

    return-object p0

    :cond_2b
    sget-object p1, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p1, p3}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    return-object p0

    :catchall_32
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_37
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3e

    goto :goto_4f

    :cond_3e
    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "readFromUri, error: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "UTrace.Sdk.Compat"

    invoke-virtual {p2, v0, p3, p1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4f
    return-object p0
.end method

.method public final writeToBundle(Lcom/oplus/utrace/sdk/UTraceContext;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const-string p0, "ctx"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bundle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "legacyKey"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newKey"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_14
    instance-of p0, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    if-eqz p0, :cond_2c

    move-object p0, p1

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;->toLegacyObj()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->toJsonString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_2c
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_2f
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_32

    goto :goto_37

    :catchall_32
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_37
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3e

    goto :goto_4f

    :cond_3e
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string p4, "writeToBundle, error: "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "UTrace.Sdk.Compat"

    invoke-virtual {p1, p4, p3, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4f
    return-object p2
.end method

.method public final writeToJsonString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;
    .registers 4

    const-string p0, "ctx"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    instance-of p0, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    if-eqz p0, :cond_10

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->toJsonString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    :cond_10
    sget-object p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromLegacyObj$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;->toJsonString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_27

    goto :goto_38

    :cond_27
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeToJsonString, error: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.Compat"

    invoke-virtual {p1, v1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    const-string p0, ""

    return-object p0
.end method

.method public final writeToUri(Lcom/oplus/utrace/sdk/UTraceContext;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 5

    const-string p0, "ctx"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uriBuilder"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "legacyKey"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newKey"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_14
    instance-of p0, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    if-eqz p0, :cond_31

    move-object p0, p1

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;->toLegacyObj()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->serializeToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->toJsonString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    goto :goto_3f

    :cond_31
    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->serializeToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_3a

    goto :goto_3f

    :catchall_3a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_46

    goto :goto_57

    :cond_46
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string p4, "writeToUri, error: "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "UTrace.Sdk.Compat"

    invoke-virtual {p1, p4, p3, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_57
    return-object p2
.end method
