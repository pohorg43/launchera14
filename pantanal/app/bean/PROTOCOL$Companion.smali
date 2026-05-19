.class public final Lpantanal/app/bean/PROTOCOL$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/PROTOCOL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/PROTOCOL$Companion;

.field public static final JSON:I = 0x2

.field public static final NONE:I = -0x1

.field public static final PROTOBUF:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/bean/PROTOCOL$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/PROTOCOL$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/PROTOCOL$Companion;->$$INSTANCE:Lpantanal/app/bean/PROTOCOL$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
