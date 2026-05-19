.class public abstract Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/content/gadget/ContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConfigPropertiesObserver"
.end annotation


# instance fields
.field private final properties:[I


# direct methods
.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;->properties:[I

    return-void
.end method


# virtual methods
.method public final getProperties()[I
    .registers 1

    iget-object p0, p0, Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;->properties:[I

    return-object p0
.end method

.method public abstract onPropertiesChanged()V
.end method
