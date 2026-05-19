.class public final Lcom/android/common/TouchLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/TouchLogger$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTouchLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchLogger.kt\ncom/android/common/TouchLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/TouchLogger$Companion;

.field private static final INSTANCE$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/common/TouchLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/TouchLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/TouchLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    sget-object v0, Lcom/android/common/TouchLogger$Companion$INSTANCE$2;->INSTANCE:Lcom/android/common/TouchLogger$Companion$INSTANCE$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/TouchLogger;->INSTANCE$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/common/TouchLogger;->INSTANCE$delegate:Lh4/f;

    return-object v0
.end method


# virtual methods
.method public final debug(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "message"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", action: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_40

    sget-object p3, Lcom/android/common/debug/RateLimitedLogger;->Companion:Lcom/android/common/debug/RateLimitedLogger$Companion;

    invoke-virtual {p3}, Lcom/android/common/debug/RateLimitedLogger$Companion;->getINSTANCE()Lcom/android/common/debug/RateLimitedLogger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/common/debug/RateLimitedLogger;->logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_40
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method public final warn(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "message"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", action: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
