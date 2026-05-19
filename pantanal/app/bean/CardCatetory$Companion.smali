.class public final Lpantanal/app/bean/CardCatetory$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/CardCatetory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/CardCatetory$Companion;

.field public static final APP:I = 0x2

.field public static final CONTENT_OPERATION:I = 0x3

.field public static final INSTANT:I = 0x1

.field public static final SEEDING:I = 0x64

.field public static final SERVICE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/bean/CardCatetory$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/CardCatetory$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/CardCatetory$Companion;->$$INSTANCE:Lpantanal/app/bean/CardCatetory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
