.class public final Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/content/gadget/ContextManager$ConfigProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;

.field public static final LANGUAGE:I = 0x2

.field public static final UI_MODE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;

    invoke-direct {v0}, Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;-><init>()V

    sput-object v0, Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;->$$INSTANCE:Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
