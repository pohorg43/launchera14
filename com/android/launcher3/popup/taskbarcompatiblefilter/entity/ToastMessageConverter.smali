.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessageConverter;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromToastMessage(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    const-string/jumbo p0, "toastMessage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Gson().toJson(toastMessage)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toToastMessage(Ljava/lang/String;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    .registers 3
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    const-string/jumbo p0, "toastMessage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Gson().fromJson(toastMes…ToastMessage::class.java)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    return-object p0
.end method
