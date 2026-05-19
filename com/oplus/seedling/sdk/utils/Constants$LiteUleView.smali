.class public final Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiteUleView"
.end annotation


# static fields
.field public static final CARD_MODE_WIDGET_1_1:Ljava/lang/String; = "widget_1*1"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;

.field public static final NOTIFICATION_LG:Ljava/lang/String; = "notification_lg"

.field public static final NOTIFICATION_MD:Ljava/lang/String; = "notification_md"

.field public static final NOTIFICATION_SM:Ljava/lang/String; = "notification_sm"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;->INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
