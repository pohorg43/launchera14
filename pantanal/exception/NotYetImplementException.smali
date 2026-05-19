.class public final Lpantanal/exception/NotYetImplementException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/exception/NotYetImplementException$a;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/exception/NotYetImplementException$a;

.field private static final MSG_NOT_IMPLEMENTED:Ljava/lang/String; = "\nNOT YET IMPLEMENTED! "


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/exception/NotYetImplementException$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/exception/NotYetImplementException$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/exception/NotYetImplementException;->Companion:Lpantanal/exception/NotYetImplementException$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\nNOT YET IMPLEMENTED!  + "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
