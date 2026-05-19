.class Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Lcom/coui/appcompat/calendar/COUICalendarYearView;III)V
    .registers 6

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    invoke-static {p1, v0, v0}, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;->access$300(Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;ZZ)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    invoke-static {p1}, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;->access$500(Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    invoke-static {p2}, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;->access$400(Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
