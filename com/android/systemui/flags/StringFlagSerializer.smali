.class public final Lcom/android/systemui/flags/StringFlagSerializer;
.super Lcom/android/systemui/flags/FlagSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/flags/FlagSerializer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/flags/StringFlagSerializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/flags/StringFlagSerializer;

    invoke-direct {v0}, Lcom/android/systemui/flags/StringFlagSerializer;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/StringFlagSerializer;->INSTANCE:Lcom/android/systemui/flags/StringFlagSerializer;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    sget-object v0, Lcom/android/systemui/flags/StringFlagSerializer$1;->INSTANCE:Lcom/android/systemui/flags/StringFlagSerializer$1;

    sget-object v1, Lcom/android/systemui/flags/StringFlagSerializer$2;->INSTANCE:Lcom/android/systemui/flags/StringFlagSerializer$2;

    const-string/jumbo v2, "string"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/flags/FlagSerializer;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
