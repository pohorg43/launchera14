.class public final Lcom/oplus/smartsdk/themecard/Tags;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/Tags;",
        "",
        "",
        "MASTER_ID",
        "Ljava/lang/String;",
        "CARD_ID",
        "CARD_SIZE",
        "CARD_ENTRY",
        "CARD_WIDTH",
        "CARD_HEIGHT",
        "CARD_URI",
        "<init>",
        "()V",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final CARD_ENTRY:Ljava/lang/String; = "card_entry"

.field public static final CARD_HEIGHT:Ljava/lang/String; = "card_height"

.field public static final CARD_ID:Ljava/lang/String; = "card_id"

.field public static final CARD_SIZE:Ljava/lang/String; = "card_size"

.field public static final CARD_URI:Ljava/lang/String; = "card_uri"

.field public static final CARD_WIDTH:Ljava/lang/String; = "card_width"

.field public static final INSTANCE:Lcom/oplus/smartsdk/themecard/Tags;

.field public static final MASTER_ID:Ljava/lang/String; = "master_id"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/smartsdk/themecard/Tags;

    invoke-direct {v0}, Lcom/oplus/smartsdk/themecard/Tags;-><init>()V

    sput-object v0, Lcom/oplus/smartsdk/themecard/Tags;->INSTANCE:Lcom/oplus/smartsdk/themecard/Tags;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
