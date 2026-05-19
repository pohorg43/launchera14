.class public final Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/utils/Constants$IntentCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\u000b"
    }
    d2 = {
        "Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;",
        "",
        "",
        "INTENT_FROM_RULE",
        "I",
        "INTENT_FROM_CLOUD",
        "INTENT_FROM_DT_USER_HABIT",
        "INTENT_FROM_GUARANTEED",
        "INTENT_FROM_OPT_REC",
        "<init>",
        "()V",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;

.field public static final INTENT_FROM_CLOUD:I = 0x1

.field public static final INTENT_FROM_DT_USER_HABIT:I = 0x2

.field public static final INTENT_FROM_GUARANTEED:I = 0x3

.field public static final INTENT_FROM_OPT_REC:I = 0x4

.field public static final INTENT_FROM_RULE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;

    invoke-direct {v0}, Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;->$$INSTANCE:Lcom/pantanal/server/content/utils/Constants$IntentCategory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
