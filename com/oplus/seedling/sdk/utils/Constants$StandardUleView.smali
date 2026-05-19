.class public final Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StandardUleView"
.end annotation


# static fields
.field public static final CARD_MODE_1_2:Ljava/lang/String; = "1*2"

.field public static final CARD_MODE_2_2:Ljava/lang/String; = "2*2"

.field public static final CARD_MODE_2_4:Ljava/lang/String; = "2*4"

.field public static final CARD_MODE_4_4:Ljava/lang/String; = "4*4"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;->INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
