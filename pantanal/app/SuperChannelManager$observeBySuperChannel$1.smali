.class final Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/SuperChannelManager;->observeBySuperChannel(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/SuperChannelInfo;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ln4/c;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.app.SuperChannelManager"
    f = "SuperChannelManager.kt"
    l = {
        0x59
    }
    m = "observeBySuperChannel"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lpantanal/app/SuperChannelManager;


# direct methods
.method public constructor <init>(Lpantanal/app/SuperChannelManager;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/SuperChannelManager;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->this$0:Lpantanal/app/SuperChannelManager;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->result:Ljava/lang/Object;

    iget p1, p0, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->label:I

    iget-object v0, p0, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->this$0:Lpantanal/app/SuperChannelManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lpantanal/app/SuperChannelManager;->observeBySuperChannel(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/SuperChannelInfo;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
